/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<11 AND p.CommentCount>17 AND p.CommentCount<33 AND u.DownVotes>705 AND u.DownVotes<891 AND v.CreationDate>'2012-08-07 14:28:14'::timestamp AND v.CreationDate<'2013-08-11 01:48:51'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-04-05 10:14:00'::timestamp AND b.Date<'2011-04-13 21:09:12'::timestamp;

