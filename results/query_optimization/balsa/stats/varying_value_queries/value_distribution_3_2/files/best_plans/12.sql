/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<93 AND p.CommentCount>3 AND p.CommentCount<20 AND u.DownVotes>410 AND u.DownVotes<1186 AND v.CreationDate>'2010-09-04 06:16:31'::timestamp AND v.CreationDate<'2012-11-26 23:18:38'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<11 AND b.Date>'2011-03-04 23:49:55'::timestamp AND b.Date<'2012-03-18 07:04:57'::timestamp;

