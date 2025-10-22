/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>9 AND p.Score<149 AND p.CommentCount>17 AND p.CommentCount<22 AND u.DownVotes>161 AND u.DownVotes<213 AND v.CreationDate>'2009-11-26 00:25:50'::timestamp AND v.CreationDate<'2012-02-14 21:24:17'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-07-10 14:42:53'::timestamp AND b.Date<'2014-07-01 22:21:14'::timestamp;

