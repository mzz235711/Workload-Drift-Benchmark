/*+ NestLoop(u p t ph b)
 NestLoop(u p t ph)
 HashJoin(u p t)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 SeqScan(t)
 IndexScan(ph)
 IndexScan(b)
 Leading(((((u p) t) ph) b)) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, postHistory as ph, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND t.Count<=310 AND u.Reputation>=1 AND u.Reputation<=461 AND u.Views>=0 AND u.Views<=21;

