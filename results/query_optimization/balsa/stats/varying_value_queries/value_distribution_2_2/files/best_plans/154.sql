/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<80 AND p.CommentCount>5 AND p.CommentCount<34 AND u.DownVotes>773 AND u.DownVotes<1910 AND v.CreationDate>'2012-07-28 08:05:37'::timestamp AND v.CreationDate<'2013-03-19 04:36:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2014-05-25 19:33:25'::timestamp AND b.Date<'2014-07-05 15:25:05'::timestamp;

