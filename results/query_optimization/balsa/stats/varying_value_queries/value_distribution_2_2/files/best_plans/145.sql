/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<128 AND p.CommentCount>2 AND p.CommentCount<23 AND u.DownVotes>22 AND u.DownVotes<1837 AND v.CreationDate>'2013-03-14 16:53:16'::timestamp AND v.CreationDate<'2014-09-05 05:46:53'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2012-02-14 22:48:52'::timestamp AND b.Date<'2014-07-08 05:38:03'::timestamp;

