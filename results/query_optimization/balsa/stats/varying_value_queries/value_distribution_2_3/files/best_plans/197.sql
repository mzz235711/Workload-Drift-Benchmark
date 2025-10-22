/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<125 AND p.CommentCount>4 AND p.CommentCount<36 AND u.DownVotes>764 AND u.DownVotes<1138 AND v.CreationDate>'2010-07-17 18:03:12'::timestamp AND v.CreationDate<'2014-06-03 21:32:05'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2013-06-05 06:48:16'::timestamp AND b.Date<'2013-06-23 05:40:04'::timestamp;

