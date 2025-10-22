/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<167 AND p.CommentCount>17 AND p.CommentCount<34 AND u.DownVotes>333 AND u.DownVotes<1496 AND v.CreationDate>'2009-10-19 13:31:23'::timestamp AND v.CreationDate<'2013-09-02 12:25:21'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2010-12-11 00:18:05'::timestamp AND b.Date<'2013-04-29 21:19:18'::timestamp;

