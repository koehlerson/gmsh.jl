## OpenCASCADE CAD Kernel

The OpenCASCADE (occ) kernel is currently not natively shipped with `gmsh_jll.jl`.
Thus, all functions only work if a full gmsh build is installed locally.

```@docs
gmsh.model.occ.addPoint
gmsh.model.occ.addLine
gmsh.model.occ.addCircleArc
gmsh.model.occ.addCircle
gmsh.model.occ.addEllipseArc
gmsh.model.occ.addEllipse
gmsh.model.occ.addSpline
gmsh.model.occ.addBSpline
gmsh.model.occ.addBezier
gmsh.model.occ.addWire
gmsh.model.occ.addCurveLoop
gmsh.model.occ.addRectangle
gmsh.model.occ.addDisk
gmsh.model.occ.addPlaneSurface
gmsh.model.occ.addSurfaceFilling
gmsh.model.occ.addBSplineFilling
gmsh.model.occ.addBezierFilling
gmsh.model.occ.addBSplineSurface
gmsh.model.occ.addBezierSurface
gmsh.model.occ.addTrimmedSurface
gmsh.model.occ.addSurfaceLoop
gmsh.model.occ.addVolume
gmsh.model.occ.addSphere
gmsh.model.occ.addBox
gmsh.model.occ.addCylinder
gmsh.model.occ.addCone
gmsh.model.occ.addWedge
gmsh.model.occ.addTorus
gmsh.model.occ.addTrhuSections
gmsh.model.occ.addThickSolid
gmsh.model.occ.extrude
gmsh.model.occ.revolve
gmsh.model.occ.addPipe
gmsh.model.occ.fillet
gmsh.model.occ.chamfer
gmsh.model.occ.fuse
gmsh.model.occ.intersect
gmsh.model.occ.cut
gmsh.model.occ.fragment
gmsh.model.occ.translate
gmsh.model.occ.rotate
gmsh.model.occ.dilate
gmsh.model.occ.mirror
gmsh.model.occ.symmetrize
gmsh.model.occ.affineTransform
gmsh.model.occ.copy
gmsh.model.occ.remove
gmsh.model.occ.removeAllDuplicates
gmsh.model.occ.healShapes
gmsh.model.occ.importShapes
gmsh.model.occ.getEntities
gmsh.model.occ.getEntitiesInBoundingBox
gmsh.model.occ.getBoundingBox
gmsh.model.occ.getMass
gmsh.model.occ.getCenterOfMass
gmsh.model.occ.getMatrixOfInertia
gmsh.model.occ.getMaxTag
gmsh.model.occ.setMaxTag
gmsh.model.occ.synchronize
```

## Meshing Constraints with OCC Kernel

```@docs
gmsh.model.occ.mesh.setSize
```
