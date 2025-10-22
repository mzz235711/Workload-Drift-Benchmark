/*+ HashJoin(v p u b)
 NestLoop(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<152 AND p.CommentCount>1 AND p.CommentCount<21 AND u.DownVotes>266 AND u.DownVotes<1080 AND v.CreationDate>'2011-08-12 03:56:57'::timestamp AND v.CreationDate<'2013-11-04 22:10:00'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2011-11-11 10:31:36'::timestamp AND b.Date<'2013-02-05 21:37:26'::timestamp;

