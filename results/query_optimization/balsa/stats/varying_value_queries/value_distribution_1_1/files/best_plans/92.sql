/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>119 AND p.Score<133 AND p.CommentCount>2 AND p.CommentCount<24 AND u.DownVotes>502 AND u.DownVotes<1365 AND v.CreationDate>'2009-06-14 18:12:21'::timestamp AND v.CreationDate<'2013-01-10 04:58:48'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2013-12-02 11:58:01'::timestamp AND b.Date<'2014-03-07 23:49:46'::timestamp;

