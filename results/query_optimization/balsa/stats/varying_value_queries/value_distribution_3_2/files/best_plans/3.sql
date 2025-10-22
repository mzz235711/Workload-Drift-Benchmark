/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<87 AND p.CommentCount>14 AND p.CommentCount<43 AND u.DownVotes>510 AND u.DownVotes<885 AND v.CreationDate>'2010-03-20 02:49:03'::timestamp AND v.CreationDate<'2012-04-09 04:32:26'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<12 AND b.Date>'2013-03-19 22:22:08'::timestamp AND b.Date<'2014-03-02 21:18:25'::timestamp;

