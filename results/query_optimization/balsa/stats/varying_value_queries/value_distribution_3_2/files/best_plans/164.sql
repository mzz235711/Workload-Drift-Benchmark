/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<16 AND p.CommentCount>6 AND p.CommentCount<36 AND u.DownVotes>155 AND u.DownVotes<304 AND v.CreationDate>'2012-03-03 01:42:53'::timestamp AND v.CreationDate<'2012-10-02 16:32:53'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2010-08-30 22:44:10'::timestamp AND b.Date<'2014-06-18 17:09:18'::timestamp;

