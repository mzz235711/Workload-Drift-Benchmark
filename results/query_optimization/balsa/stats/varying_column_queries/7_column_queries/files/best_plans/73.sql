/*+ HashJoin(b ph p t u)
 HashJoin(ph p t u)
 NestLoop(p t u)
 HashJoin(p t)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(t)
 IndexScan(u)
 Leading((b (ph ((p t) u)))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, postHistory as ph, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = ph.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND p.CommentCount=0 AND p.CreationDate>='2010-07-21 14:55:06'::timestamp AND u.Views>=0 AND u.Views<=15 AND u.UpVotes>=0 AND ph.PostHistoryTypeId=3 AND b.Date<='2014-08-29 18:37:20'::timestamp;

