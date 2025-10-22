/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<69 AND p.CommentCount>15 AND p.CommentCount<27 AND u.DownVotes>219 AND u.DownVotes<1773 AND v.CreationDate>'2010-09-04 04:07:21'::timestamp AND v.CreationDate<'2012-05-09 12:48:31'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2012-01-04 07:12:35'::timestamp AND b.Date<'2014-08-28 15:13:33'::timestamp;

