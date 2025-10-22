/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<93 AND p.CommentCount>20 AND p.CommentCount<40 AND u.DownVotes>149 AND u.DownVotes<1767 AND v.CreationDate>'2009-03-28 05:26:31'::timestamp AND v.CreationDate<'2014-08-19 09:29:59'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2014-03-08 00:03:29'::timestamp AND b.Date<'2014-08-12 08:28:29'::timestamp;

