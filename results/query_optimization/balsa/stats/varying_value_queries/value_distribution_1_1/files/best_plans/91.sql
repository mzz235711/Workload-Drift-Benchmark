/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<77 AND p.CommentCount>4 AND p.CommentCount<18 AND u.DownVotes>564 AND u.DownVotes<901 AND v.CreationDate>'2010-02-02 10:54:31'::timestamp AND v.CreationDate<'2012-03-27 07:49:40'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2010-07-27 18:09:28'::timestamp AND b.Date<'2014-03-03 21:16:40'::timestamp;

