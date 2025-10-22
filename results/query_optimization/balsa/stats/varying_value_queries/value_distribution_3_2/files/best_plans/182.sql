/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<158 AND p.CommentCount>1 AND p.CommentCount<34 AND u.DownVotes>532 AND u.DownVotes<959 AND v.CreationDate>'2011-01-22 23:39:40'::timestamp AND v.CreationDate<'2013-05-18 04:07:38'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2012-09-28 15:13:05'::timestamp AND b.Date<'2013-10-11 19:18:49'::timestamp;

