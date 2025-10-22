/*+ NestLoop(v p u b)
 MergeJoin(v p u)
 MergeJoin(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<7 AND p.CommentCount>0 AND p.CommentCount<30 AND u.DownVotes>293 AND u.DownVotes<1257 AND v.CreationDate>'2009-04-16 18:30:09'::timestamp AND v.CreationDate<'2012-01-22 23:50:01'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2011-05-13 23:59:01'::timestamp AND b.Date<'2013-10-03 01:59:10'::timestamp;

