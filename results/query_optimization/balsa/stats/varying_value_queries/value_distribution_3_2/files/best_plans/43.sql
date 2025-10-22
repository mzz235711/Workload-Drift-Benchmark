/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<66 AND p.CommentCount>15 AND p.CommentCount<32 AND u.DownVotes>759 AND u.DownVotes<1676 AND v.CreationDate>'2010-02-05 18:41:23'::timestamp AND v.CreationDate<'2012-08-20 02:44:02'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<12 AND b.Date>'2010-09-22 07:58:43'::timestamp AND b.Date<'2012-04-03 14:10:01'::timestamp;

