/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<115 AND p.CommentCount>16 AND p.CommentCount<39 AND u.DownVotes>318 AND u.DownVotes<1057 AND v.CreationDate>'2011-10-23 11:34:56'::timestamp AND v.CreationDate<'2014-02-23 11:22:13'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2011-01-09 19:25:40'::timestamp AND b.Date<'2013-12-11 09:51:59'::timestamp;

