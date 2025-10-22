/*+ HashJoin(ph b t p u)
 HashJoin(b t p u)
 HashJoin(t p u)
 HashJoin(t p)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(t)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (b ((t p) u)))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, postHistory as ph, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND t.Count>=1 AND p.CommentCount<=19 AND p.CreationDate<='2014-09-11 14:26:05'::timestamp AND u.Views>=0 AND ph.PostHistoryTypeId=3 AND ph.CreationDate<='2014-09-09 18:57:23'::timestamp;

