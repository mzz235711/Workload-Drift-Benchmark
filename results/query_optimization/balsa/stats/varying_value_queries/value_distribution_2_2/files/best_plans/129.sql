/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<59 AND p.CommentCount>1 AND p.CommentCount<26 AND u.DownVotes>649 AND u.DownVotes<1047 AND v.CreationDate>'2014-01-12 01:47:49'::timestamp AND v.CreationDate<'2014-03-22 04:44:30'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2013-03-27 17:52:30'::timestamp AND b.Date<'2013-10-18 01:40:06'::timestamp;

