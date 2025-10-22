/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<33 AND p.CommentCount>7 AND p.CommentCount<27 AND u.DownVotes>285 AND u.DownVotes<1031 AND v.CreationDate>'2009-05-28 08:29:03'::timestamp AND v.CreationDate<'2013-06-26 22:03:27'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<13 AND b.Date>'2010-08-19 19:53:17'::timestamp AND b.Date<'2014-04-15 16:53:38'::timestamp;

