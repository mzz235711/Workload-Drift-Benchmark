/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<80 AND p.CommentCount>11 AND p.CommentCount<32 AND u.DownVotes>14 AND u.DownVotes<1040 AND v.CreationDate>'2014-03-03 22:14:45'::timestamp AND v.CreationDate<'2014-08-23 10:49:43'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<12 AND b.Date>'2012-06-19 09:14:06'::timestamp AND b.Date<'2014-08-08 11:58:20'::timestamp;

