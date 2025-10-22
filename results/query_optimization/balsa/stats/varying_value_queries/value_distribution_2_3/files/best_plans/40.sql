/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>76 AND p.Score<168 AND p.CommentCount>1 AND p.CommentCount<36 AND u.DownVotes>58 AND u.DownVotes<1425 AND v.CreationDate>'2011-11-28 05:56:57'::timestamp AND v.CreationDate<'2014-07-01 09:21:01'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-03-31 23:35:05'::timestamp AND b.Date<'2014-06-12 06:11:42'::timestamp;

