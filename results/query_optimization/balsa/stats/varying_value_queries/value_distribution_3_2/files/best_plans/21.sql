/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<172 AND p.CommentCount>0 AND p.CommentCount<19 AND u.DownVotes>430 AND u.DownVotes<839 AND v.CreationDate>'2010-11-26 21:59:35'::timestamp AND v.CreationDate<'2014-05-10 19:25:37'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2012-06-23 18:24:03'::timestamp AND b.Date<'2012-10-30 02:50:01'::timestamp;

