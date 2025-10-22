/*+ HashJoin(p t u b ph)
 HashJoin(p t u b)
 NestLoop(p t u)
 HashJoin(p t)
 IndexScan(p)
 IndexScan(t)
 IndexScan(u)
 SeqScan(b)
 IndexScan(ph)
 Leading(((((p t) u) b) ph)) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, postHistory as ph, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND u.Views=0 AND u.UpVotes<=165 AND b.Date>='2010-07-27 05:18:44'::timestamp;

