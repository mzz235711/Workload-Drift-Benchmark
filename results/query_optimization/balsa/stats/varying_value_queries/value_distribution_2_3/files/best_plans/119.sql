/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>12 AND p.Score<131 AND p.CommentCount>2 AND p.CommentCount<30 AND u.DownVotes>648 AND u.DownVotes<1434 AND v.CreationDate>'2009-06-09 01:51:18'::timestamp AND v.CreationDate<'2014-07-10 18:19:07'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2011-10-25 14:57:45'::timestamp AND b.Date<'2012-11-04 11:38:05'::timestamp;

