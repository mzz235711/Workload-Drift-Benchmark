/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>52 AND p.Score<86 AND p.CommentCount>3 AND p.CommentCount<35 AND u.DownVotes>22 AND u.DownVotes<1623 AND v.CreationDate>'2012-08-16 07:57:58'::timestamp AND v.CreationDate<'2013-01-19 16:24:08'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2013-04-17 13:17:22'::timestamp AND b.Date<'2013-06-04 09:12:34'::timestamp;

