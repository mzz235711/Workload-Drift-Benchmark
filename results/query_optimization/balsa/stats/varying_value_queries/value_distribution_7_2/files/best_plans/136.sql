/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>50 AND p.Score<130 AND p.CommentCount>4 AND p.CommentCount<36 AND u.DownVotes>633 AND u.DownVotes<1051 AND v.CreationDate>'2010-11-03 11:03:33'::timestamp AND v.CreationDate<'2014-02-22 07:36:38'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2011-06-02 22:49:09'::timestamp AND b.Date<'2012-03-21 14:29:58'::timestamp;

