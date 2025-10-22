/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>118 AND p.Score<178 AND p.CommentCount>0 AND p.CommentCount<19 AND u.DownVotes>668 AND u.DownVotes<1829 AND v.CreationDate>'2012-01-20 12:39:42'::timestamp AND v.CreationDate<'2014-01-18 08:33:10'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2013-02-11 18:44:57'::timestamp AND b.Date<'2013-07-01 13:41:18'::timestamp;

