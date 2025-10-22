/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<54 AND p.CommentCount>18 AND p.CommentCount<23 AND u.DownVotes>773 AND u.DownVotes<1345 AND v.CreationDate>'2012-09-18 15:51:44'::timestamp AND v.CreationDate<'2013-03-13 21:46:34'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2012-09-25 02:02:08'::timestamp AND b.Date<'2013-12-16 16:06:14'::timestamp;

