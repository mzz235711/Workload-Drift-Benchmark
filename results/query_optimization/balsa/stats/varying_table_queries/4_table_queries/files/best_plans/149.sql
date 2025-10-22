/*+ HashJoin(ph u p b)
 MergeJoin(ph u p)
 HashJoin(u p)
 IndexScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate>='2010-08-06 13:04:47'::timestamp AND p.PostTypeId=2 AND u.CreationDate>='2010-09-05 03:22:50'::timestamp AND b.Date>='2010-08-07 23:42:38'::timestamp;

