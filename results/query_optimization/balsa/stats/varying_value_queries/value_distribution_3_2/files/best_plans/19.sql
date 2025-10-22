/*+ HashJoin(b v u p)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<165 AND p.CommentCount>0 AND p.CommentCount<33 AND u.DownVotes>672 AND u.DownVotes<845 AND v.CreationDate>'2013-08-09 09:11:12'::timestamp AND v.CreationDate<'2014-08-26 14:42:24'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2013-04-01 02:26:33'::timestamp AND b.Date<'2014-07-05 03:06:40'::timestamp;

