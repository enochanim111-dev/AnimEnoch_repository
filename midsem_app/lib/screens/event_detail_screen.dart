// =============================================================================
// C3 (10 marks) — Event detail screen
// =============================================================================
import 'package:flutter/material.dart';
import '../models/event.dart';

class EventDetailScreen extends StatelessWidget {
  final CampusEvent event;

  const EventDetailScreen({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(event.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Hero(
                tag: 'event_${event.id}',
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: Text(
                    event.initial,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(event.title, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 12),
            Text('Venue: ${event.venue}', style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 8),
            Text('Date: ${event.dateLabel}', style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 8),
            Text('Category: ${event.category}', style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 8),
            Text(
              event.isFree ? 'Price: FREE' : 'Price: GHS ${event.price.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text('Seats Left: ${event.seatsLeft} / ${event.capacity}',
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: event.isSoldOut
                    ? null
                    : () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Reserved ticket for ${event.title}!')),
                        );
                      },
                child: Text(event.isSoldOut ? 'SOLD OUT' : 'Reserve Ticket'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}