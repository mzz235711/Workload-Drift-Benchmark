/*+ MergeJoin(v u p b)
 MergeJoin(u p b)
 MergeJoin(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading((v ((u p) b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>41 AND p.Score<174 AND p.CommentCount>2 AND p.CommentCount<28 AND u.DownVotes>547 AND u.DownVotes<1481 AND v.CreationDate>'2009-12-21 17:31:00'::timestamp AND v.CreationDate<'2014-02-22 11:30:15'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2011-10-16 23:57:42'::timestamp AND b.Date<'2012-02-13 23:00:50'::timestamp;

