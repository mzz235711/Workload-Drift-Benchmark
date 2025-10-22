/*+ MergeJoin(v p u b)
 MergeJoin(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>99 AND p.Score<134 AND p.CommentCount>9 AND p.CommentCount<12 AND u.DownVotes>665 AND u.DownVotes<998 AND v.CreationDate>'2010-04-04 17:40:20'::timestamp AND v.CreationDate<'2012-04-17 10:55:09'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2013-08-05 21:12:21'::timestamp AND b.Date<'2013-09-20 00:42:43'::timestamp;

