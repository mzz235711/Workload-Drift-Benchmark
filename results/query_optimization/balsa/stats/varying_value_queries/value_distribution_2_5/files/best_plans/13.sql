/*+ HashJoin(b v u p)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>64 AND p.Score<69 AND p.CommentCount>0 AND p.CommentCount<43 AND u.DownVotes>669 AND u.DownVotes<1270 AND v.CreationDate>'2011-12-18 05:17:03'::timestamp AND v.CreationDate<'2014-03-30 08:41:47'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-12-05 21:00:30'::timestamp AND b.Date<'2013-07-25 15:42:39'::timestamp;

