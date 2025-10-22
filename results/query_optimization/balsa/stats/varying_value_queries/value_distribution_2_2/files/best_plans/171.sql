/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<172 AND p.CommentCount>14 AND p.CommentCount<42 AND u.DownVotes>586 AND u.DownVotes<1829 AND v.CreationDate>'2009-04-28 03:36:41'::timestamp AND v.CreationDate<'2012-12-04 22:44:19'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<12 AND b.Date>'2011-08-31 02:17:34'::timestamp AND b.Date<'2012-03-19 10:04:04'::timestamp;

