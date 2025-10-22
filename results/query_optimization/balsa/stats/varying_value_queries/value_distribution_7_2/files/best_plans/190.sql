/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<185 AND p.CommentCount>6 AND p.CommentCount<39 AND u.DownVotes>622 AND u.DownVotes<1444 AND v.CreationDate>'2009-09-21 15:59:21'::timestamp AND v.CreationDate<'2013-02-19 12:20:50'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2012-01-12 10:39:46'::timestamp AND b.Date<'2013-02-11 00:08:51'::timestamp;

