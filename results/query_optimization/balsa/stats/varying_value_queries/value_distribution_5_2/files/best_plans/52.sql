/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<72 AND p.CommentCount>5 AND p.CommentCount<10 AND u.DownVotes>192 AND u.DownVotes<731 AND v.CreationDate>'2010-04-28 17:34:19'::timestamp AND v.CreationDate<'2012-07-06 04:18:11'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2011-05-10 04:26:17'::timestamp AND b.Date<'2012-05-22 14:50:14'::timestamp;

