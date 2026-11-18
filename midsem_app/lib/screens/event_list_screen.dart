// =============================================================================
// Event List Screen — Responsive layout, empty state, Hero transitions
// =============================================================================
import 'package:flutter/material.dart';
import '../models/event.dart';
import '../utils/format.dart';
import '../theme/app_theme.dart';
import '../data/sample_events.dart';
import 'event_detail_screen.dart';

class EventListScreen extends StatelessWidget {
  final List<CampusEvent>? events;

  const EventListScreen({super.key, this.events});

  @override
  Widget build(BuildContext context) {
    final displayEvents = events ?? sampleEvents;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Campus Events'),
      ),
      body: displayEvents.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.event_busy, size: 64, color: Colors.grey[400]),
                  const SizedBox(height: 16),
                  Text('No events available', style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
            )
          : LayoutBuilder(
              builder: (context, constraints) {
                final isWide = constraints.maxWidth >= Breakpoints.tablet;
                return GridView.builder(
                  padding: const EdgeInsets.all(16),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: isWide ? 2 : 1,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: isWide ? 2.5 : 3.2,
                  ),
                  itemCount: displayEvents.length,
                  itemBuilder: (context, index) {
                    final event = displayEvents[index];
                    return Card(
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(16),
                        leading: Hero(
                          tag: 'event_${event.id}',
                          child: CircleAvatar(
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            child: Text(event.initial, style: const TextStyle(color: Colors.white)),
                          ),
                        ),
                        title: Text(event.title, style: Theme.of(context).textTheme.titleMedium),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 4),
                            Text(event.venue, style: Theme.of(context).textTheme.bodySmall),
                            const SizedBox(height: 4),
                            Text(
                              formatPrice(event.price),
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: event.isFree ? Colors.green[700] : null,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            if (event.isSoldOut)
                              const Text('SOLD OUT', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => EventDetailScreen(event: event),
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}