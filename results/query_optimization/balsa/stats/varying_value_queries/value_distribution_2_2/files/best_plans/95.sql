/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>24 AND p.Score<152 AND p.CommentCount>1 AND p.CommentCount<6 AND u.DownVotes>185 AND u.DownVotes<1774 AND v.CreationDate>'2011-08-11 10:42:02'::timestamp AND v.CreationDate<'2014-04-07 16:58:12'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2012-02-02 02:55:56'::timestamp AND b.Date<'2012-06-09 03:31:31'::timestamp;

