/*+ HashJoin(b v u p)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>79 AND p.Score<132 AND p.CommentCount>14 AND p.CommentCount<22 AND u.DownVotes>72 AND u.DownVotes<1118 AND v.CreationDate>'2010-09-20 09:19:37'::timestamp AND v.CreationDate<'2012-08-01 15:08:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2010-08-14 02:03:18'::timestamp AND b.Date<'2013-08-18 19:33:42'::timestamp;

