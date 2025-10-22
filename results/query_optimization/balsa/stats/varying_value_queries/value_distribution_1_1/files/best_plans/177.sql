/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<40 AND p.CommentCount>4 AND p.CommentCount<36 AND u.DownVotes>180 AND u.DownVotes<1392 AND v.CreationDate>'2010-07-07 14:58:44'::timestamp AND v.CreationDate<'2014-02-21 02:42:54'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2011-02-25 19:30:50'::timestamp AND b.Date<'2013-01-24 10:26:40'::timestamp;

