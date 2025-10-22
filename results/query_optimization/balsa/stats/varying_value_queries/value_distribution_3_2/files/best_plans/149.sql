/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>46 AND p.Score<136 AND p.CommentCount>1 AND p.CommentCount<36 AND u.DownVotes>469 AND u.DownVotes<1509 AND v.CreationDate>'2011-09-30 21:19:38'::timestamp AND v.CreationDate<'2014-08-08 02:45:51'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2012-03-07 05:01:53'::timestamp AND b.Date<'2014-02-03 05:02:56'::timestamp;

