/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<28 AND p.CommentCount>6 AND p.CommentCount<23 AND u.DownVotes>541 AND u.DownVotes<1823 AND v.CreationDate>'2012-02-26 05:32:22'::timestamp AND v.CreationDate<'2014-08-19 15:31:24'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-08-12 06:13:07'::timestamp AND b.Date<'2013-03-08 19:51:26'::timestamp;

