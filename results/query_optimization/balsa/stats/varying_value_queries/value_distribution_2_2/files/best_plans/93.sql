/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>41 AND p.Score<118 AND p.CommentCount>3 AND p.CommentCount<34 AND u.DownVotes>217 AND u.DownVotes<1838 AND v.CreationDate>'2013-07-11 10:48:59'::timestamp AND v.CreationDate<'2014-02-11 08:23:18'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2010-10-04 15:28:43'::timestamp AND b.Date<'2011-11-10 20:17:11'::timestamp;

