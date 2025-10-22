/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<61 AND p.CommentCount>1 AND p.CommentCount<19 AND u.DownVotes>324 AND u.DownVotes<1601 AND v.CreationDate>'2009-10-31 07:19:27'::timestamp AND v.CreationDate<'2010-09-18 14:39:57'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2013-02-04 03:28:17'::timestamp AND b.Date<'2013-06-22 04:44:32'::timestamp;

