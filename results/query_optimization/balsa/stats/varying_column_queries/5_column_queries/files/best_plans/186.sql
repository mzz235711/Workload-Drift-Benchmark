/*+ HashJoin(ph p u b t)
 HashJoin(p u b t)
 HashJoin(p u b)
 HashJoin(u b)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 SeqScan(b)
 IndexScan(t)
 Leading((ph ((p (u b)) t))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, postHistory as ph, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND t.Count>=1 AND t.Count<=581 AND p.Score<=77 AND u.Views>=0 AND u.CreationDate<='2014-09-12 04:56:25'::timestamp;

