/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<177 AND p.CommentCount>23 AND p.CommentCount<40 AND u.DownVotes>25 AND u.DownVotes<1540 AND v.CreationDate>'2011-03-28 19:57:55'::timestamp AND v.CreationDate<'2013-10-29 05:10:07'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2012-02-22 12:22:02'::timestamp AND b.Date<'2012-04-06 00:47:33'::timestamp;

