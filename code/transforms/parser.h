#include "transforms/brightness_transform.h"
#include "transforms/composition.h"
#include "transforms/pixel_identity.h"
#include "transforms/pixel_transform.h"
#include "transforms/rotation.h"
#include "transforms/scale.h"
#include "transforms/shear.h"
#include "transforms/transformation.h"
#include "transforms/translation.h"
#include "transforms/translation_1d.h"

SpatialTransformation *getSpatialTransformation(string &s);
PixelTransformation *getPixelTransformation(string &s);