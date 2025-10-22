/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<50 AND p.CommentCount>6 AND p.CommentCount<37 AND u.DownVotes>101 AND u.DownVotes<1593 AND v.CreationDate>'2009-04-03 22:34:02'::timestamp AND v.CreationDate<'2012-09-12 13:55:17'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2013-05-05 13:29:35'::timestamp AND b.Date<'2013-07-28 09:43:15'::timestamp;

