#ifndef FLUTTER_sae_hackathonLICATION_H_
#define FLUTTER_sae_hackathonLICATION_H_

#include <gtk/gtk.h>

G_DECLARE_FINAL_TYPE(MyApplication, sae_hackathonlication, MY, APPLICATION,
                     GtkApplication)

/**
 * sae_hackathonlication_new:
 *
 * Creates a new Flutter-based application.
 *
 * Returns: a new #MyApplication.
 */
MyApplication* sae_hackathonlication_new();

#endif  // FLUTTER_sae_hackathonLICATION_H_
