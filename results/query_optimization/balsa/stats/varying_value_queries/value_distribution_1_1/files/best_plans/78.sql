/*+ MergeJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>30 AND p.Score<125 AND p.CommentCount>1 AND p.CommentCount<42 AND u.DownVotes>547 AND u.DownVotes<1515 AND v.CreationDate>'2009-12-20 01:47:51'::timestamp AND v.CreationDate<'2014-03-27 09:17:09'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-04-09 08:56:35'::timestamp AND b.Date<'2012-08-25 16:12:14'::timestamp;

