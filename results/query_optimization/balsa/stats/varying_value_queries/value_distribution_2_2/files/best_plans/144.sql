/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<143 AND p.CommentCount>2 AND p.CommentCount<28 AND u.DownVotes>404 AND u.DownVotes<1226 AND v.CreationDate>'2013-09-16 06:11:35'::timestamp AND v.CreationDate<'2014-05-25 21:34:58'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2012-03-19 01:02:33'::timestamp AND b.Date<'2012-08-08 17:14:45'::timestamp;

