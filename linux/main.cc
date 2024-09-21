#include "sae_hackathonlication.h"

int main(int argc, char** argv) {
  g_autoptr(MyApplication) app = sae_hackathonlication_new();
  return g_application_run(G_APPLICATION(app), argc, argv);
}
