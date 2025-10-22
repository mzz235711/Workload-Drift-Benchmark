/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>54 AND p.Score<76 AND p.CommentCount>4 AND p.CommentCount<39 AND u.DownVotes>313 AND u.DownVotes<1458 AND v.CreationDate>'2009-08-27 10:13:30'::timestamp AND v.CreationDate<'2014-03-15 16:19:12'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2010-07-21 07:59:21'::timestamp AND b.Date<'2013-02-26 21:32:45'::timestamp;

