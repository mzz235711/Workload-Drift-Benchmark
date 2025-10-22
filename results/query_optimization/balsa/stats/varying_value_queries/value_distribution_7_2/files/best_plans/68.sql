/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<128 AND p.CommentCount>6 AND p.CommentCount<15 AND u.DownVotes>656 AND u.DownVotes<1081 AND v.CreationDate>'2010-12-12 01:56:39'::timestamp AND v.CreationDate<'2014-04-10 02:18:52'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2012-12-10 21:23:03'::timestamp AND b.Date<'2014-02-14 20:10:24'::timestamp;

